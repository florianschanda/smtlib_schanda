(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.int RTN inf)
(declare-const x Int)
(assert (= x (- 183126220780775225097817291507040407596223947355632708877163086856278294327305791786219214942950813366418437633868169938066388952928846263020911889575191200634859550850952788638870630963910598553085540696834647055295467897564605031573251367412005203064476918584299120232753919052818655755414466388117191947899)))
(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) x)))
;; y should be Float64(-oo)

(declare-const z Float64)
(assert (= z (_ -oo 11 53)))
(assert (not (= y z)))
