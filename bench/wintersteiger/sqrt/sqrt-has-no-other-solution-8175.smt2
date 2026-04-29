(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4821264572094292599757636708091013133525848388671875p340 {+ 2171304533033843 340 (3.31958e+102)}
; 1.4821264572094292599757636708091013133525848388671875p340 S == 1.217426160885919816934119808138348162174224853515625p170
; [HW: 1.217426160885919816934119808138348162174224853515625p170] 

; mpf : + 979200377146426 170
; mpfd: + 979200377146426 170 (1.82197e+051) class: Pos. norm. non-zero
; hwf : + 979200377146426 170 (1.82197e+051) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101010011 #b0111101101101100101000111011011001000000001101110011)))
(assert (= r (fp #b0 #b10010101001 #b0011011110101001001111011010101001001100110000111010)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
