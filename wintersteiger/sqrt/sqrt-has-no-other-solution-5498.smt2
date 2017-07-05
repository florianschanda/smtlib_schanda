(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.857398373686071746391235137707553803920745849609375p-685 {+ 3861378996240662 -685 (1.15707e-206)}
; 1.857398373686071746391235137707553803920745849609375p-685 S == 1.9273807997829963678526610237895511090755462646484375p-343
; [HW: 1.9273807997829963678526610237895511090755462646484375p-343] 

; mpf : + 4176551824333255 -343
; mpfd: + 4176551824333255 -343 (1.07567e-103) class: Pos. norm. non-zero
; hwf : + 4176551824333255 -343 (1.07567e-103) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101010010 #b1101101101111110011101011011011010100000000100010110)))
(assert (= r (fp #b0 #b01010101000 #b1110110101101000110100111111111000000001100111000111)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
