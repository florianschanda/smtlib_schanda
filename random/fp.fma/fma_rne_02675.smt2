(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b01010110 #b11101010100101110000111)))
;; x should be Float32(0x2B754B87 [Rational(16075655, 18446744073709551616), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x02C67F8B)))
;; y should be Float32(0x02C67F8B [Rational(13008779, 44601490397061246283071436545296723011960832), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x80800000)))
;; z should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result ((_ to_fp 8 24) #x80800000))))
(check-sat)
(exit)
