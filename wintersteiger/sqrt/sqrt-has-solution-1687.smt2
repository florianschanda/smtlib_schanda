(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2724117162692356597375464843935333192348480224609375p-763 {+ 1226833303881487 -763 (2.62265e-230)}
; 1.2724117162692356597375464843935333192348480224609375p-763 S == 1.5952502726965669399561420505051501095294952392578125p-382
; [HW: 1.5952502726965669399561420505051501095294952392578125p-382] 

; mpf : + 2680768906308445 -382
; mpfd: + 2680768906308445 -382 (1.61946e-115) class: Pos. norm. non-zero
; hwf : + 2680768906308445 -382 (1.61946e-115) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100000100 #b0100010110111100110001100011010001101100011100001111)))
(assert (= r (fp #b0 #b01010000001 #b1001100001100010010100100110011000101010101101011101)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
