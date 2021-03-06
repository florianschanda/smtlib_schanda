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
(assert (= y (fp #b0 #b10010100 #b11101110111101100000010)))
;; y should be Float32(0x4A777B02 [Rational(8109441, 2), 4054720.500000])

(declare-const result Float32)
(assert (= result (fp.sub RTZ x y)))
(assert (not (= result (_ -oo 8 24))))
(check-sat)
(exit)
