(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNA -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b10111000101001000010001)))
;; x should be Float32(0xCADC5211 [Rational(-14438929, 2), -7219464.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNA x)))
;; y should be -7219465

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111100100011101011011110111))
;; z should be -7219465

(assert (not (= y z)))
(check-sat)
(exit)
