(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.588254731778201200853573027416132390499114990234375p-111 {+ 2649263790835238 -111 (6.11773e-034)}
; 1.588254731778201200853573027416132390499114990234375p-111 | == 1.588254731778201200853573027416132390499114990234375p-111
; [HW: 1.588254731778201200853573027416132390499114990234375p-111] 

; mpf : + 2649263790835238 -111
; mpfd: + 2649263790835238 -111 (6.11773e-034) class: Pos. norm. non-zero
; hwf : + 2649263790835238 -111 (6.11773e-034) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110010000 #b1001011010010111110111001011001010110100011000100110)))
(assert (= r (fp #b0 #b01110010000 #b1001011010010111110111001011001010110100011000100110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
