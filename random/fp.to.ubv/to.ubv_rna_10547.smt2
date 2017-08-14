(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RNA +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10011101 #b11001110100011001001110)))
;; x should be Float32(0x4EE7464E [Rational(1940072192), 1940072192.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNA x)))
;; y should be 1940072192

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000001110011101000110010011100000000))
;; z should be 1940072192

(assert (not (= y z)))
(check-sat)
(exit)
