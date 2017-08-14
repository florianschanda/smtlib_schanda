(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNA +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x49A43630)))
;; x should be Float32(0x49A43630 [Rational(1345222), 1345222.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNA x)))
;; y should be 1345222

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000101001000011011000110))
;; z should be 1345222

(assert (= y z))
(check-sat)
(exit)
