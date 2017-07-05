(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7255860217485909924306497487123124301433563232421875p513 {- 3267748937172195 513 (-4.62727e+154)}
; -1.7255860217485909924306497487123124301433563232421875p513 | == 1.7255860217485909924306497487123124301433563232421875p513
; [HW: 1.7255860217485909924306497487123124301433563232421875p513] 

; mpf : + 3267748937172195 513
; mpfd: + 3267748937172195 513 (4.62727e+154) class: Pos. norm. non-zero
; hwf : + 3267748937172195 513 (4.62727e+154) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000000000 #b1011100111000000000000010110100111011000010011100011)))
(assert (= r (fp #b0 #b11000000000 #b1011100111000000000000010110100111011000010011100011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
