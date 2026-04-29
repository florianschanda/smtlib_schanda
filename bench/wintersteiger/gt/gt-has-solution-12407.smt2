(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.897358070280335429202978048124350607395172119140625p-342 {+ 4041341470932426 -342 (2.11783e-103)}
; Y = 1.6195141405764694741975517899845726788043975830078125p-395 {+ 2790043652650941 -395 (2.00695e-119)}
; 1.897358070280335429202978048124350607395172119140625p-342 > 1.6195141405764694741975517899845726788043975830078125p-395 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010101001 #b1110010110111001010000100010110010100111110111001010)))
(assert (= y (fp #b0 #b01001110100 #b1001111010011000011110101000110100101111011110111101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
