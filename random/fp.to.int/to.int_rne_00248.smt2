(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RNE +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b00100110 #b10001110100110110011101)))
;; x should be Float32(0x13474D9D [Rational(13061533, 5192296858534827628530496329220096), 0.000000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 0

(declare-const z Int)
(assert (= z 0))
(assert (not (= y z)))
