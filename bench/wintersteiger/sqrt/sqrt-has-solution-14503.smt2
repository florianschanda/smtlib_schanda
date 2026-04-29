(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1999812547647124016947373092989437282085418701171875p-135 {+ 900635504439443 -135 (2.75502e-041)}
; 1.1999812547647124016947373092989437282085418701171875p-135 S == 1.5491812384383643053098467134987004101276397705078125p-68
; [HW: 1.5491812384383643053098467134987004101276397705078125p-68] 

; mpf : + 2473292420789885 -68
; mpfd: + 2473292420789885 -68 (5.24883e-021) class: Pos. norm. non-zero
; hwf : + 2473292420789885 -68 (5.24883e-021) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101111000 #b0011001100110001111110001011010100000111000010010011)))
(assert (= r (fp #b0 #b01110111011 #b1000110010010111001001000100001010101011011001111101)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
