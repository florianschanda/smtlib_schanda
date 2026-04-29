(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3061867285189687759583421211573295295238494873046875p763 {+ 1378942436463819 763 (6.33712e+229)}
; Y = 1.7186747914563529349152304348535835742950439453125p750 {+ 3236623523003400 750 (1.01787e+226)}
; 1.3061867285189687759583421211573295295238494873046875p763 < 1.7186747914563529349152304348535835742950439453125p750 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011111010 #b0100111001100010010000001110000101110101010011001011)))
(assert (= y (fp #b0 #b11011101101 #b1011011111111011000100100011010111000011110000001000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
