(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0465032336489652475819411847623996436595916748046875p-586 {+ 209431945733003 -586 (4.13203e-177)}
; Y = 1.3843823144663909285867475773557089269161224365234375p939 {+ 1731104048198647 939 (6.43312e+282)}
; 1.0465032336489652475819411847623996436595916748046875p-586 / 1.3843823144663909285867475773557089269161224365234375p939 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110110101 #b0000101111100111101000101100101110101110001110001011)))
(assert (= y (fp #b0 #b11110101010 #b0110001001100110111000010001110111001011001111110111)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
