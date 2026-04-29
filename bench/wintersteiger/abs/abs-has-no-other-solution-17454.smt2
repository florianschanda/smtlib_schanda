(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.40739376423856210607254979549907147884368896484375p911 {+ 1834738404817852 911 (2.43636e+274)}
; 1.40739376423856210607254979549907147884368896484375p911 | == 1.40739376423856210607254979549907147884368896484375p911
; [HW: 1.40739376423856210607254979549907147884368896484375p911] 

; mpf : + 1834738404817852 911
; mpfd: + 1834738404817852 911 (2.43636e+274) class: Pos. norm. non-zero
; hwf : + 1834738404817852 911 (2.43636e+274) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110001110 #b0110100001001010111101010010110111111111101110111100)))
(assert (= r (fp #b0 #b11110001110 #b0110100001001010111101010010110111111111101110111100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
