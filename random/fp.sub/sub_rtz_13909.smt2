(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0918DC9B)))
;; x should be Float32(0x0918DC9B [Rational(10017947, 5444517870735015415413993718908291383296), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x9BEC5683)))
;; y should be Float32(0x9BEC5683 [Rational(-15488643, 39614081257132168796771975168), -0.000000])

(declare-const result Float32)
(assert (= result (fp.sub RTZ x y)))
(assert (not (= result (fp #b0 #b00110111 #b11011000101011010000011))))
(check-sat)
(exit)
