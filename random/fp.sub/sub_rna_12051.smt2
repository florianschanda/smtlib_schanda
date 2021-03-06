(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC9A94314)))
;; x should be Float32(0xC9A94314 [Rational(-2773189, 2), -1386594.500000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010100 #b11010111111110010010110)))
;; y should be Float32(0x4A6BFC96 [Rational(7732811, 2), 3866405.500000])

(declare-const result Float32)
(assert (= result (fp.sub RNA x y)))
(assert (not (= result ((_ to_fp 8 24) #xCAA04F10))))
(check-sat)
(exit)
