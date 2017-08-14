(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNA -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCABC694F)))
;; x should be Float32(0xCABC694F [Rational(-12347727, 2), -6173863.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNA x)))
;; y should be -6173864

(declare-const z (_ BitVec 32))
(assert (= z #b11111111101000011100101101011000))
;; z should be -6173864

(assert (= y z))
(check-sat)
(exit)
