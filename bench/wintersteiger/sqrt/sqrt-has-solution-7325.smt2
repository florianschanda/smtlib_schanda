(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.90966944909383595785357101703993976116180419921875p-479 {+ 4096786991969324 -479 (1.22346e-144)}
; 1.90966944909383595785357101703993976116180419921875p-479 S == 1.95431289669481333959311086800880730152130126953125p-240
; [HW: 1.95431289669481333959311086800880730152130126953125p-240] 

; mpf : + 4297843205949620 -240
; mpfd: + 4297843205949620 -240 (1.1061e-072) class: Pos. norm. non-zero
; hwf : + 4297843205949620 -240 (1.1061e-072) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000100000 #b1110100011100000000110001101011000000111010000101100)))
(assert (= r (fp #b0 #b01100001111 #b1111010001001101110110011001100101110100100010110100)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
