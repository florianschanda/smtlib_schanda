(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0267145110853770351155844764434732496738433837890625p461 {+ 120311462169489 461 (6.11333e+138)}
; 1.0267145110853770351155844764434732496738433837890625p461 S == 1.4329790724817839109306305545032955706119537353515625p230
; [HW: 1.4329790724817839109306305545032955706119537353515625p230] 

; mpf : + 1949964389488185 230
; mpfd: + 1949964389488185 230 (2.47251e+069) class: Pos. norm. non-zero
; hwf : + 1949964389488185 230 (2.47251e+069) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111001100 #b0000011011010110110000110001111101110000101110010001)))
(assert (= r (fp #b0 #b10011100101 #b0110111011010111101101110110110000101001011000111001)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
