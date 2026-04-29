(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNA +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b11111011011011001010110)))
;; x should be Float32(0x4A7DB656 [Rational(8313643, 2), 4156821.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNA x)))
;; y should be 4156822

(declare-const z (_ BitVec 32))
(assert (= z #b00000000001111110110110110010110))
;; z should be 4156822

(assert (= y z))
(check-sat)
(exit)
