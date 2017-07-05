(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2429960208938393151356649468652904033660888671875p-806 {+ 1094356789150008 -806 (2.91268e-243)}
; Y = -1.583157327449874696156939535285346210002899169921875p-113 {- 2626307122601630 -113 (-1.52453e-034)}
; 1.2429960208938393151356649468652904033660888671875p-806 > -1.583157327449874696156939535285346210002899169921875p-113 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011011001 #b0011111000110100111111001011101011001100000100111000)))
(assert (= y (fp #b1 #b01110001110 #b1001010101001001110011000111000111010001111010011110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
