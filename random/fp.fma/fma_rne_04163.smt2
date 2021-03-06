(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xFF800000)))
;; x should be Float32(-oo)

(declare-const y Float32)
(assert (= y (fp #b1 #b10010101 #b00010001100110111010011)))
;; y should be Float32(0xCA88CDD3 [Rational(-8965587, 2), -4482793.500000])

(declare-const z Float32)
(assert (= z (fp #b0 #b10010101 #b10011010110011110010111)))
;; z should be Float32(0x4ACD6797 [Rational(13461399, 2), 6730699.500000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result ((_ to_fp 8 24) #x7F800000))))
(check-sat)
(exit)
