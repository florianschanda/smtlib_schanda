(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNA +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x40C69440)))
;; x should be Float32(0x40C69440 [Rational(203345, 32768), 6.205597])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNA x)))
;; y should be 6

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000000000000000000000110))
;; z should be 6

(assert (= y z))
(check-sat)
(exit)
