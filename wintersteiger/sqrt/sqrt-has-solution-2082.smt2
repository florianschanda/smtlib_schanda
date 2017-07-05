(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1782695178303808081210490854573436081409454345703125p-811 {- 802854534072421 -811 (-8.62816e-245)}
; -1.1782695178303808081210490854573436081409454345703125p-811 S == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : - 2251799813685248 1024 (-1.#IND) class: NaN

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011010100 #b0010110110100011000100100011010011110100100001100101)))
(assert (= r (_ NaN 11 53)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
