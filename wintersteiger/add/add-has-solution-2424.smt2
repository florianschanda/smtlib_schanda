(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7935221321953160877882282875361852347850799560546875p-957 {- 3573705978865067 -957 (-1.47232e-288)}
; Y = -1.7581505861149098191020812009810470044612884521484375p881 {- 3414406697117831 881 (-2.83454e+265)}
; -1.7935221321953160877882282875361852347850799560546875p-957 + -1.7581505861149098191020812009810470044612884521484375p881 == -1.7581505861149098191020812009810470044612884521484375p881
; [HW: -1.7581505861149098191020812009810470044612884521484375p881] 

; mpf : - 3414406697117831 881
; mpfd: - 3414406697117831 881 (-2.83454e+265) class: Neg. norm. non-zero
; hwf : - 3414406697117831 881 (-2.83454e+265) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001000010 #b1100101100100100010001000011011001101110010110101011)))
(assert (= y (fp #b1 #b11101110000 #b1100001000010110001010000010010011001110100010000111)))
(assert (= r (fp #b1 #b11101110000 #b1100001000010110001010000010010011001110100010000111)))
(assert (= (fp.add roundTowardPositive x y) r))
(check-sat)
(exit)
