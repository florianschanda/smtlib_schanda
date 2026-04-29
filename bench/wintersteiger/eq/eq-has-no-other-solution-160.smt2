(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5249555775959733328051015632809139788150787353515625p-380 {+ 2364189743647289 -380 (6.1924e-115)}
; Y = 1.69258220812460091764251046697609126567840576171875p454 {+ 3119112974433388 454 (7.8735e+136)}
; 1.5249555775959733328051015632809139788150787353515625p-380 = 1.69258220812460091764251046697609126567840576171875p454 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010000011 #b1000011001100011011111010001110110100000101000111001)))
(assert (= y (fp #b0 #b10111000101 #b1011000101001101000100010100110110101111110001101100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
