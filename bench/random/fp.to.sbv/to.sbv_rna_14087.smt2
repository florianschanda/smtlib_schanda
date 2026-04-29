(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNA +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AFA87F0)))
;; x should be Float32(0x4AFA87F0 [Rational(8209400), 8209400.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNA x)))
;; y should be 8209400

(declare-const z (_ BitVec 32))
(assert (= z #b00000000011111010100001111111000))
;; z should be 8209400

(assert (= y z))
(check-sat)
(exit)
