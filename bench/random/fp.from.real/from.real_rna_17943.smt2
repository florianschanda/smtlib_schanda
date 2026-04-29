(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00329410)))
;; x should be Float32(0x00329410 [Rational(207169, 44601490397061246283071436545296723011960832), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 11827260340970610003470671080826806454967965978069709.0 2546294970418107607835557110511722701314335492082420313295175561692976624704170882729246720.0))))
;; w should be Float32(0x00329410 [Rational(207169, 44601490397061246283071436545296723011960832), 0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
