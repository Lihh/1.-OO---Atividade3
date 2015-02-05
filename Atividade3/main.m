//
//  main.m
//  Atividade3
//
//  Created by Lidia Chou on 2/5/15.
//  Copyright (c) 2015 Lidia Chou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Invoice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Invoice *i = [[Invoice alloc]initWithNumero:1 andDescricao:@"Caderno" andQtdeComprada:3 andPrecoUnit:10.0];
        
        [i verificaQtde];
        [i verificaPreco];
        [i getInvoiceAmount];
        [i mostraStatus];

        
    }
    return 0;
}
