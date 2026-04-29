(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTP -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAB93873)))
;; x should be Float32(0xCAB93873 [Rational(-12138611, 2), -6069305.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTP x)))
;; y should be -6069305

(declare-const z (_ BitVec 32))
(assert (= z #b11111111101000110110001111000111))
;; z should be -6069305

(assert (= y z))
(check-sat)
(exit)
