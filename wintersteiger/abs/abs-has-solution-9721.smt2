(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8196896218553682000873550350661389529705047607421875p-921 {- 3691553875547299 -921 (-1.02653e-277)}
; -1.8196896218553682000873550350661389529705047607421875p-921 | == 1.8196896218553682000873550350661389529705047607421875p-921
; [HW: 1.8196896218553682000873550350661389529705047607421875p-921] 

; mpf : + 3691553875547299 -921
; mpfd: + 3691553875547299 -921 (1.02653e-277) class: Pos. norm. non-zero
; hwf : + 3691553875547299 -921 (1.02653e-277) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001100110 #b1101000111010111001011011101011010111101010010100011)))
(assert (= r (fp #b0 #b00001100110 #b1101000111010111001011011101011010111101010010100011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
