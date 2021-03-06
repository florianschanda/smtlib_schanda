(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x805B6770)))
;; x should be Float32(0x805B6770 [Rational(-374391, 44601490397061246283071436545296723011960832), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b11111111 #b00010110101101100011010)))
;; y should be Float32(NaN)

(declare-const result Float32)
(assert (= result (fp.div RNE x y)))
(assert (not (= result (_ NaN 8 24))))
(check-sat)
(exit)
