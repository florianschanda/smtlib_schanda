(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.396504451789227996272302334546111524105072021484375p157 {- 1785697301328710 157 (-2.55124e+047)}
; -1.396504451789227996272302334546111524105072021484375p157 | == 1.396504451789227996272302334546111524105072021484375p157
; [HW: 1.396504451789227996272302334546111524105072021484375p157] 

; mpf : + 1785697301328710 157
; mpfd: + 1785697301328710 157 (2.55124e+047) class: Pos. norm. non-zero
; hwf : + 1785697301328710 157 (2.55124e+047) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010011100 #b0110010110000001010100001101010100100111001101000110)))
(assert (= r (fp #b0 #b10010011100 #b0110010110000001010100001101010100100111001101000110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
