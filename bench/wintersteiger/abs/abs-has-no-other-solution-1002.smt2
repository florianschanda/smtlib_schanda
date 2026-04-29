(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.083537289623869082078044812078587710857391357421875p396 {- 376218506421598 396 (-1.74873e+119)}
; -1.083537289623869082078044812078587710857391357421875p396 | == 1.083537289623869082078044812078587710857391357421875p396
; [HW: 1.083537289623869082078044812078587710857391357421875p396] 

; mpf : + 376218506421598 396
; mpfd: + 376218506421598 396 (1.74873e+119) class: Pos. norm. non-zero
; hwf : + 376218506421598 396 (1.74873e+119) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110001011 #b0001010101100010101100110010011011101110010101011110)))
(assert (= r (fp #b0 #b10110001011 #b0001010101100010101100110010011011101110010101011110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
