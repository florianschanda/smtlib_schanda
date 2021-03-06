(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b11100101 #b01111100100111111010010)))
;; x should be Float32(0x72BE4FD2 [Rational(7539027033954114737664648282112), 7539027033954114737664648282112.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 188475672804223806266502394114981.0 25.0))))
;; w should be Float32(0x72BE4FD2 [Rational(7539027033954114737664648282112), 7539027033954114737664648282112.000000])

(assert (= x w))
(check-sat)
(exit)
