(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNE -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAA56AFA)))
;; x should be Float32(0xCAA56AFA [Rational(-5420413), -5420413.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNE x)))
;; y should be -5420413

(declare-const z (_ BitVec 32))
(assert (= z #b11111111101011010100101010000011))
;; z should be -5420413

(assert (= y z))
(check-sat)
(exit)
