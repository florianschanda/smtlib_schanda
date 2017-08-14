(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTZ +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10101111 #b00001100000011010011011)))
;; x should be Float32(0x5786069B [Rational(294725856788480), 294725856788480.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTZ x)))
;; y should be 294725856788480

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000001000011000000110100110110000000000000000000000000))
;; z should be 294725856788480

(assert (= y z))
(check-sat)
(exit)
