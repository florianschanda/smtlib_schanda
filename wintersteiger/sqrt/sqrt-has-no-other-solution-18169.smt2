(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1458106310308460162872279397561214864253997802734375p-548 {+ 656672703577175 -548 (1.24358e-165)}
; 1.1458106310308460162872279397561214864253997802734375p-548 S == 1.07042544393845862060743456822820007801055908203125p-274
; [HW: 1.07042544393845862060743456822820007801055908203125p-274] 

; mpf : + 317168003078644 -274
; mpfd: + 317168003078644 -274 (3.52645e-083) class: Pos. norm. non-zero
; hwf : + 317168003078644 -274 (3.52645e-083) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111011011 #b0010010101010011110110000111001110101111110001010111)))
(assert (= r (fp #b0 #b01011101101 #b0001001000000111011001101110001010000101100111110100)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
