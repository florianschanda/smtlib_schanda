(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (_ -zero 8 24)))
;; x should be Float32(-zero)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x485647E0)))
;; y should be Float32(0x485647E0 [Rational(438847, 2), 219423.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x002F91FD)))
;; z should be Float32(0x002F91FD [Rational(3117565, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (= result ((_ to_fp 8 24) #x002F91FD)))
(check-sat)
(exit)
