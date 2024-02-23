<?php

declare(strict_types=1);

namespace Meta\Mvc\Utils;
 
class Utils  {
   
     
    
        public static function formatarData($data) {
             
            // Divide a data em partes usando o traço como delimitador
            $partes = explode("-", $data);
    
               // Reordena as partes da data para o formato dd/mm/yyyy
              $dataFormatada = $partes[2] . "/" . $partes[1] . "/" . $partes[0];
    
              return $dataFormatada;

            
        }
     
    

        public static function formatarDocumento($documento) {
                
                // Remove qualquer caractere que não seja número
                $documento = preg_replace("/\D/", "", $documento);
            
                // Verifica se o documento é um CPF (11 dígitos) ou CNPJ (14 dígitos)
                $tamanho = strlen($documento);
                if ($tamanho == 11) {
                    // Formata o CPF no formato 000.000.000-00
                    $documentoFormatado = substr($documento, 0, 3) . '.' .
                                          substr($documento, 3, 3) . '.' .
                                          substr($documento, 6, 3) . '-' .
                                          substr($documento, -2);
                } elseif ($tamanho == 14) {
                    // Formata o CNPJ no formato 00.000.000/0000-00
                    $documentoFormatado = substr($documento, 0, 2) . '.' .
                                          substr($documento, 2, 3) . '.' .
                                          substr($documento, 5, 3) . '/' .
                                          substr($documento, 8, 4) . '-' .
                                          substr($documento, -2);
                } else {
                    return false; // Retorna falso se não for CPF nem CNPJ
                }
            
                return $documentoFormatado;
            }


            public static function formatarDocumentoBanco($documento) {
                
                // Remove qualquer caractere que não seja número
                $documento = preg_replace("/\D/", "", $documento);
                           
                return $documento;
            }
            

}