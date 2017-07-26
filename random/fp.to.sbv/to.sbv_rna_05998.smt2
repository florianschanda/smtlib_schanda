(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNA +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AF0E4FE)))
;; x should be Float32(0x4AF0E4FE [Rational(7893631), 7893631.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNA x)))
;; y should be 7893631

(declare-const z (_ BitVec 32))
(assert (= z #b00000000011110000111001001111111))
;; z should be 7893631

(assert (= y z))
(check-sat)
(exit)
