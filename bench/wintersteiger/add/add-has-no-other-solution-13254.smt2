(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = NaN {+ 4299758127008114 1024 (1.#QNAN)}
; Y = -1.522014611962226648955720520461909472942352294921875p823 {- 2350944811915038 823 (-8.51344e+247)}
; NaN + -1.522014611962226648955720520461909472942352294921875p823 == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : + 4299758127008114 1024 (1.#QNAN) class: NaN

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ NaN 11 53)))
(assert (= y (fp #b1 #b11100110110 #b1000010110100010101111111110011001101001011100011110)))
(assert (= r (_ NaN 11 53)))
(assert  (not (= (fp.add roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
