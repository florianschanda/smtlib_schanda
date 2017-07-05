(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5459284918682605347584058108623139560222625732421875p969 {+ 2458643352548835 969 (7.71357e+291)}
; 1.5459284918682605347584058108623139560222625732421875p969 S == 1.758367704360075389757867014850489795207977294921875p484
; [HW: 1.758367704360075389757867014850489795207977294921875p484] 

; mpf : + 3415384510765854 484
; mpfd: + 3415384510765854 484 (8.78269e+145) class: Pos. norm. non-zero
; hwf : + 3415384510765854 484 (8.78269e+145) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111001000 #b1000101111000001111110000011101010000111010111100011)))
(assert (= r (fp #b0 #b10111100011 #b1100001000100100011000101100100010010001101100011110)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
