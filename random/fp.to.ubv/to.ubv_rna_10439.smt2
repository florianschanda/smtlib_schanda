(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNA +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A03B434)))
;; x should be Float32(0x4A03B434 [Rational(2157837), 2157837.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RNA x)))
;; y should be 2157837

(declare-const z (_ BitVec 32))
(assert (= z #b00000000001000001110110100001101))
;; z should be 2157837

(assert (= y z))
(check-sat)
(exit)
