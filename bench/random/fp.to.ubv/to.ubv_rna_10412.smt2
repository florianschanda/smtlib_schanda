(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNA +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x47EC8E00)))
;; x should be Float32(0x47EC8E00 [Rational(121116), 121116.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RNA x)))
;; y should be 121116

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000000011101100100011100))
;; z should be 121116

(assert (= y z))
(check-sat)
(exit)
