(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5592926001299802774013869566260837018489837646484375p863 {+ 2518829945536455 863 (9.5899e+259)}
; 1.5592926001299802774013869566260837018489837646484375p863 S == 1.76595164154060579875249459291808307170867919921875p431
; [HW: 1.76595164154060579875249459291808307170867919921875p431] 

; mpf : + 3449539527426092 431
; mpfd: + 3449539527426092 431 (9.7928e+129) class: Pos. norm. non-zero
; hwf : + 3449539527426092 431 (9.7928e+129) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101011110 #b1000111100101101110011001100001001110011111111000111)))
(assert (= r (fp #b0 #b10110101110 #b1100010000010101011010000010001010111100000000101100)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
