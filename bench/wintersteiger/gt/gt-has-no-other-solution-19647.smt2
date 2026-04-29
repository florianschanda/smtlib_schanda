(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.486822507429724993244235520251095294952392578125p-601 {+ 2192453663056080 -601 (1.79156e-181)}
; Y = 1.1036533267270243197089030218194238841533660888671875p945 {+ 466813083623539 945 (3.2823e+284)}
; 1.486822507429724993244235520251095294952392578125p-601 > 1.1036533267270243197089030218194238841533660888671875p945 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110100110 #b0111110010100000011001100101110001011110000011010000)))
(assert (= y (fp #b0 #b11110110000 #b0001101010001001000001100100000001101010000001110011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
