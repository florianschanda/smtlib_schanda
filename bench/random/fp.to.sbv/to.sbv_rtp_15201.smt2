(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTP -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b01110010011100001110100)))
;; x should be Float32(0xCAB93874 [Rational(-6069306), -6069306.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTP x)))
;; y should be -6069306

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111101000110110001111000110))
;; z should be -6069306

(assert (= y z))
(check-sat)
(exit)
