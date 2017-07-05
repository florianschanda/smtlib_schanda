(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7614605973977492947568634917843155562877655029296875p536 {- 3429313662697819 536 (-3.96233e+161)}
; -1.7614605973977492947568634917843155562877655029296875p536 S == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : - 2251799813685248 1024 (-1.#IND) class: NaN

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000010111 #b1100001011101111000101001110101100000100000101011011)))
(assert (= r (_ NaN 11 53)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
