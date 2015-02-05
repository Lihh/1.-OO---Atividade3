//
//  Invoice.h
//  Atividade3
//
//  Created by Lidia Chou on 2/5/15.
//  Copyright (c) 2015 Lidia Chou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Invoice : NSObject
{
    int numero;
    NSString *descricao;
    int qtdeComprada;
    double precoUnit;
}

@property int numero;
@property NSString *descricao;
@property int qtdeComprada;
@property double precoUnit;

-(Invoice *) initWithNumero:(int)n andDescricao:(NSString *)d andQtdeComprada:(int)q andPrecoUnit:(double)p;

-(int) verificaQtde;
-(double) verificaPreco;
-(double) getInvoiceAmount;
-(void) mostraStatus;

@end
