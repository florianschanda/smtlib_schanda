(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNE +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x445B39C3)))
;; x should be Float32(0x445B39C3 [Rational(14367171, 16384), 876.902527])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNE x)))
;; y should be 877

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000000000000001101101101))
;; z should be 877

(assert (= y z))
(check-sat)
(exit)
