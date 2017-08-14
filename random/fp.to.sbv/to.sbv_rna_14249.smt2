(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNA +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010001 #b00100110010100011110110)))
;; x should be Float32(0x489328F6 [Rational(4822139, 16), 301383.687500])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNA x)))
;; y should be 301384

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000001001001100101001000))
;; z should be 301384

(assert (= y z))
(check-sat)
(exit)
