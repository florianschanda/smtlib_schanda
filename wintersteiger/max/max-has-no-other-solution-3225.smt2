(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.947177396134804450156252642045728862285614013671875p593 {- 4265707768286462 593 (-6.31238e+178)}
; Y = -1.5347730707995115295716459513641893863677978515625p453 {- 2408403802380456 453 (-3.5697e+136)}
; -1.947177396134804450156252642045728862285614013671875p593 M -1.5347730707995115295716459513641893863677978515625p453 == -1.5347730707995115295716459513641893863677978515625p453
; [HW: -1.5347730707995115295716459513641893863677978515625p453] 

; mpf : - 2408403802380456 453
; mpfd: - 2408403802380456 453 (-3.5697e+136) class: Neg. norm. non-zero
; hwf : - 2408403802380456 453 (-3.5697e+136) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001010000 #b1111001001111010001101111100001111101000110011111110)))
(assert (= y (fp #b1 #b10111000100 #b1000100011100110111000110101000111011101100010101000)))
(assert (= r (fp #b1 #b10111000100 #b1000100011100110111000110101000111011101100010101000)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
