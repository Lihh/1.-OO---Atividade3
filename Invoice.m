//
//  Invoice.m
//  Atividade3
//
//  Created by Lidia Chou on 2/5/15.
//  Copyright (c) 2015 Lidia Chou. All rights reserved.
//

#import "Invoice.h"

@implementation Invoice

-(Invoice *) initWithNome:(int)n andDescricao:(NSString *)d andQtdeComprada:(int)q andPrecoUnit:(double)p
{
    self = [super init];
    
    if (self) {
        numero = n;
        descricao = d;
        qtdeComprada = q;
        precoUnit = p;
    }
    return self;
    
}

-(int) verificaQtde
{
    if (qtdeComprada<0)
        qtdeComprada = 0;
    
    return qtdeComprada;
}

-(double) verificaPreco
{
    if (precoUnit<0)
        precoUnit = 0.0;
    
    return precoUnit;
}

-(double) getInvoiceAmount
{
    qtdeComprada = [self verificaQtde];
    precoUnit = [self verificaPreco];
    
    double valorFatura = qtdeComprada * precoUnit;
    
    return valorFatura;
}

-(void) mostraStatus
{
    double valorFatura = [self getInvoiceAmount];
    
    NSLog(@"Numero da compra: %d", numero);
    NSLog(@"Descricao: %@", descricao);
    NSLog(@"Quantidade de itens comprados: %i", qtdeComprada);
    NSLog(@"Preco unitario do item: %f", precoUnit);
    NSLog(@"Preco total da compra: %f", valorFatura);
}

@synthesize numero, descricao, qtdeComprada, precoUnit;

@end
