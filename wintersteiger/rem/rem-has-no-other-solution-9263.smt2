(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.399440580197972128217998033505864441394805908203125p-416 {- 1798920448136242 -416 (-8.26944e-126)}
; Y = -1.5866470278453306264054845087230205535888671875p142 {- 2642023336002240 142 (-8.84585e+042)}
; -1.399440580197972128217998033505864441394805908203125p-416 % -1.5866470278453306264054845087230205535888671875p142 == -1.399440580197972128217998033505864441394805908203125p-416
; [HW: -1.399440580197972128217998033505864441394805908203125p-416] 

; mpf : - 1798920448136242 -416
; mpfd: - 1798920448136242 -416 (-8.26944e-126) class: Neg. norm. non-zero
; hwf : - 1798920448136242 -416 (-8.26944e-126) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001011111 #b0110011001000001101111001110010010100101010000110010)))
(assert (= y (fp #b1 #b10010001101 #b1001011000101110011111111110011011100100001011000000)))
(assert (= r (fp #b1 #b01001011111 #x6641bce4a5432)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
