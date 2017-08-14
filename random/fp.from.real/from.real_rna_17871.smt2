(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b10110011 #b10001110101000100011101)))
;; x should be Float32(0x59C7511D [Rational(7012838170165248), 7012838170165248.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 175320952667180664.0 25.0))))
;; w should be Float32(0x59C7511D [Rational(7012838170165248), 7012838170165248.000000])

(assert (not (= x w)))
(check-sat)
(exit)
