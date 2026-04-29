(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.046573228541173516958906475338153541088104248046875p186 {+ 209747174703470 186 (1.02648e+056)}
; 1.046573228541173516958906475338153541088104248046875p186 S == 1.0230216168494064010729971414548344910144805908203125p93
; [HW: 1.0230216168494064010729971414548344910144805908203125p93] 

; mpf : + 103680145064453 93
; mpfd: + 103680145064453 93 (1.01315e+028) class: Pos. norm. non-zero
; hwf : + 103680145064453 93 (1.01315e+028) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010111001 #b0000101111101100001110010001110101110100000101101110)))
(assert (= r (fp #b0 #b10001011100 #b0000010111100100101111101010001101111000001000000101)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
