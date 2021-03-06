(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A18FB3A)))
;; x should be Float32(0x4A18FB3A [Rational(5012893, 2), 2506446.500000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10010011 #b10011100000010110010100)))
;; y should be Float32(0xC9CE0594 [Rational(-3375461, 2), -1687730.500000])

(declare-const result Float32)
(assert (= result (fp.max x y)))
(assert (not (= result ((_ to_fp 8 24) #x4A18FB3A))))
(check-sat)
(exit)
